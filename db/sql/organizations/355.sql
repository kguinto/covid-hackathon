
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
      'Sinai Urgent Care',
      '18101 Preston Rd. Suite 201
Dallas, TX 75252',
      'Dallas',
      'TX',
      'Mail delivery or pickup works (details unclear)',
      'Unsure',
      '32.9987735',
      '-96.7990149'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Urgent Care'
        AND o.latitude = '32.9987735'
        AND o.longitude = '-96.7990149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Urgent Care'
        AND o.latitude = '32.9987735'
        AND o.longitude = '-96.7990149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Urgent Care'
        AND o.latitude = '32.9987735'
        AND o.longitude = '-96.7990149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('GOWNS ARE TOP PRIORITY',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Urgent Care'
        AND o.latitude = '32.9987735'
        AND o.longitude = '-96.7990149'));

COMMIT;
