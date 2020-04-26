
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
      'Community Clinic',
      '614 E Emma Ave #300
Springdale, AR 72764',
      'Springdale',
      'AR',
      'ATTN: Ashley Hardin, COVID-19',
      'Yes',
      '36.185448',
      '-94.1228329'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Clinic'
        AND o.latitude = '36.185448'
        AND o.longitude = '-94.1228329'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Clinic'
        AND o.latitude = '36.185448'
        AND o.longitude = '-94.1228329'));

COMMIT;
