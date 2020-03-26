import disco
import pathlib

DISCO_EMAIL = 'ray_ifx@dis.co'
DISCO_PASSWORD = 'impact123'

disco.set_credentials(DISCO_EMAIL, DISCO_PASSWORD, save_to_config=True)

script_id = disco.upload_file('server.py', pathlib.Path('server.py'))
job = disco.Job.create(script_id, upload_requirements_file=False)
job.start()

(task_result,) = job.get_results(block=True)
task_result.write_files('.')
