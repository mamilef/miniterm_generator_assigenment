import itertools

class HorizontalMinitermGenerator:
    def __init__(self, predicates):
        self.predicates = predicates
    
    def generate_miniterms(self):
        miniterms = []
        # Generate all combinations of True/False for each predicate
        for values in itertools.product([True, False], repeat=len(self.predicates)):
            miniterm = {}
            for pred, val in zip(self.predicates, values):
                # Represent each predicate as either itself (if True) or its negation (if False)
                miniterm[pred] = val
            miniterms.append(miniterm)
        return miniterms

# Example usage
predicates = ["P1", "P2", "P3"]
generator = HorizontalMinitermGenerator(predicates)
miniterms = generator.generate_miniterms()

# Print results
for idx, miniterm in enumerate(miniterms, start=1):
    print(f"Miniterm {idx}: {miniterm}")
