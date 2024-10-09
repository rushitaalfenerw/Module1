import random

# Generate a list of 400 workers dynamically
workers = []
for i in range(400):
    worker = {
        'name': f'Worker_{i+1}',
        'gender': random.choice(['Male', 'Female']),
        'salary': random.randint(5000, 30000)  # random salary between $5,000 and $30,000
    }
    workers.append(worker)

# Function to generate payment slips and assign employee levels
def generate_payment_slips(workers):
    for worker in workers:
        try:
            # Assign Employee level based on salary and gender
            if 10000 < worker['salary'] < 20000:
                worker['level'] = "A1"
            elif 7500 < worker['salary'] < 30000 and worker['gender'] == 'Female':
                worker['level'] = "A5-F"
            else:
                worker['level'] = "None"

            # Generate payment slip
            print(f"Payment Slip for {worker['name']}:")
            print(f"  Gender: {worker['gender']}")
            print(f"  Salary: ${worker['salary']}")
            print(f"  Employee Level: {worker['level']}")
            print("-" * 40)

        except Exception as e:
            print(f"Error processing payment slip for {worker['name']}: {e}")

# Call the function to generate payment slips for all workers
generate_payment_slips(workers)
