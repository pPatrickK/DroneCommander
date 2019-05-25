import datetime
import os
from subprocess import call

def generate_name_from_current_date():
    value = str(datetime.datetime.now())
    value = value.split('.')[0]
    return value

def get_trajectory_folder_name():
    return "trajectories/"

def run_trajectory_generation_tool(input_filename, output_filename, path_to_generator, v_max, a_max):
    command = path_to_generator + "/genTrajectory"
    call([command, "-i", input_filename, "--v_max", str(v_max), "--a_max", str(a_max), "-o", output_filename])
    print("Create trajectory with:")
    print(a_max)
    print(v_max)

def generate_trajectory(json_data):
    id = json_data['id']
    v_max = json_data['vmax']
    a_max = json_data['amax']
    waypoints = json_data['data']
    folder_basename = os.path.dirname(os.path.abspath(__file__)) + '/' + get_trajectory_folder_name() + 'cf' + str(id) + '_' + generate_name_from_current_date().replace(" ", "_")
    waypoint_csv = folder_basename + ".csv"
    trajectory_csv = folder_basename + "_traj.csv"
    with open(waypoint_csv, "w+") as waypoint_csv_file:
        for waypoint in waypoints:
            waypoint_csv_file.write(','.join(str(coordinate) for coordinate in waypoint) + "\n")
    run_trajectory_generation_tool(waypoint_csv, trajectory_csv, "../../../../../../uav_trajectories/build", v_max, a_max)
    #os.remove(waypoint_csv)
    return trajectory_csv
