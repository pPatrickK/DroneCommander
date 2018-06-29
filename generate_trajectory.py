import datetime
import os
import subprocess

def generate_name_from_current_date():
    return str(datetime.datetime.now())

def get_trajectory_folder_name():
    return "trajectories/"

def run_trajectory_generation_tool(input_filename, output_filename, path_to_generator):
    command = "genTrajectory"
    p = subprocess.Popen([command, "-i", input_filename, "--v_max", "1.0", "--a_max", "1.0", "-o", output_filename], cwd=path_to_generator)
    p.wait()

def generate_trajectory(waypoints):
    folder_basename = os.path.dirname(os.path.abspath(__file__)) + '/' + get_trajectory_folder_name() + generate_name_from_current_date().replace(" ", "_")
    waypoint_csv = folder_basename + ".csv"
    trajectory_csv = folder_basename + "_traj.csv"
    with open(waypoint_csv, "w+") as waypoint_csv_file:
        for waypoint in waypoints:
            waypoint_csv_file.write(','.join(str(coordinate) for coordinate in waypoint) + "\n")
    run_trajectory_generation_tool(waypoint_csv, trajectory_csv, "/home/flw/Dokumente/uav_trajectories/build/")
    os.remove(waypoint_csv)

# test
generate_trajectory([[1.0, 2.0, 13.37], [2.0, 3.1, 1331.45]])
