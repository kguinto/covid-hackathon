
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
      'AFC Urgent Care',
      '2401 W Cheltenham Ave
Wyncote, PA 19095',
      'Wyncote',
      'PA',
      'Please either call 732-616-3845 or send to: AFC Urgent Care, 2401 W Cheltenham Ave, Wyncote, PA 19095',
      'Unsure',
      '40.0747405',
      '-75.1565623'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '40.0747405'
        AND o.longitude = '-75.1565623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '40.0747405'
        AND o.longitude = '-75.1565623'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '40.0747405'
        AND o.longitude = '-75.1565623'));

COMMIT;
