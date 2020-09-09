import argparse

def main():
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--team_id",
        dest="team_id",
        default="No Team Found",
        required=True,
        help="Team Information",
    )

    parser.add_argument(
        "--wins",
        dest="wins",
        default="0",
        required=True,
        help="Number of Wins",
    )

    known_args, _ = parser.parse_known_args(None)
    team_id=known_args.team_id
    wins=known_args.wins

    print(f'You favourite team is the {team_id}. The currently have {wins} wins.')


# Script run example 
# python team-scores.py --team_id canucks --wins 28
main()