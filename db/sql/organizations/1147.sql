
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
      'The Hearts & Hands Clinic',
      '127 North College Street
Statesboro, GA 30458',
      'Statesboro',
      'GA',
      'Free medical clinic for low income, uninsured adults. Please come to the backdoor',
      'Yes',
      '32.4536889',
      '-81.7856441'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Hearts & Hands Clinic'
        AND o.latitude = '32.4536889'
        AND o.longitude = '-81.7856441'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Hearts & Hands Clinic'
        AND o.latitude = '32.4536889'
        AND o.longitude = '-81.7856441'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Hearts & Hands Clinic'
        AND o.latitude = '32.4536889'
        AND o.longitude = '-81.7856441'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Hearts & Hands Clinic'
        AND o.latitude = '32.4536889'
        AND o.longitude = '-81.7856441'));

COMMIT;
