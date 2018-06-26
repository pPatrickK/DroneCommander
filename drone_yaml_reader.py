import yaml

def get_initial_positions_by_id(path):
    data = {}
    with open(path, 'r') as yaml_file:
        root = yaml.load(yaml_file)
        for node in root['crazyflies']:
            id = int(node['id'])
            data[id] = node['initialPosition']
    return data


if __name__ == '__main__':
    print get_initial_positions_by_id('../../launch/crazyflies.yaml')
