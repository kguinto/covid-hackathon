
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
      'Mercy Home Care',
      '2740 1st Ave NE
Cedar Rapids, IA 52402',
      'Cedar Rapids',
      'IA',
      'can drop off at entry',
      'Yes',
      '42.0045649',
      '-91.6352158'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Home Care'
        AND o.latitude = '42.0045649'
        AND o.longitude = '-91.6352158'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Home Care'
        AND o.latitude = '42.0045649'
        AND o.longitude = '-91.6352158'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Home Care'
        AND o.latitude = '42.0045649'
        AND o.longitude = '-91.6352158'));

COMMIT;
