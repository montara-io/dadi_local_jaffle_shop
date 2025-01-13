def model(dbt, session):
    # This function is the entry point for dbt models. 
    # Use the dbt and session objects to interact with your dbt environment and database.
    
    dbt.config(
        # Add any configuration options here, such as materialization and tags.
    )
    
    # Write your transformation logic here.

    return