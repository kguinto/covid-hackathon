
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
      'Trinity Treatment Center',
      '1221 Newberg Ave
Macon, GA 31206',
      'Macon',
      'GA',
      'Clinic hours 6:30 am - 11:30 am',
      'Yes',
      '32.8032347',
      '-83.6623333'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinity Treatment Center'
        AND o.latitude = '32.8032347'
        AND o.longitude = '-83.6623333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinity Treatment Center'
        AND o.latitude = '32.8032347'
        AND o.longitude = '-83.6623333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinity Treatment Center'
        AND o.latitude = '32.8032347'
        AND o.longitude = '-83.6623333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinity Treatment Center'
        AND o.latitude = '32.8032347'
        AND o.longitude = '-83.6623333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinity Treatment Center'
        AND o.latitude = '32.8032347'
        AND o.longitude = '-83.6623333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Trinity Treatment Center'
        AND o.latitude = '32.8032347'
        AND o.longitude = '-83.6623333'));

COMMIT;
