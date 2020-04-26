
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Highland Hospital - Fairmont Campus',
      '15400 Foothill Blvd
San Leandro, CA 94578',
      'Oakland',
      'CA',
      'Donations must be dropped off at the Fairmont Campus - Central Supply Service located at 15400 Foothill Blvd in San Leandro.  

Hours are 8am-4pm Monday-Friday.​

Central Supply is between E building and cafeteria.

Follow donation signage to Receiving dock',
      'Email is: AHSF.admin@alamedahealthsystem.org. No homemade masks, please.',
      '37.7081595',
      '-122.1198168'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Highland Hospital - Fairmont Campus'
        AND o.latitude = '37.7081595'
        AND o.longitude = '-122.1198168'));

COMMIT;
