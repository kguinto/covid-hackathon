
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
      'Mount Sinai West ',
      '1000 10th Ave
New York, NY 10019',
      'New York - Manhattan',
      'NY',
      'Call us at 347-295-9998 or delivery for medical ICU',
      'Yes',
      '40.7699982',
      '-73.9874797'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai West '
        AND o.latitude = '40.7699982'
        AND o.longitude = '-73.9874797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai West '
        AND o.latitude = '40.7699982'
        AND o.longitude = '-73.9874797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai West '
        AND o.latitude = '40.7699982'
        AND o.longitude = '-73.9874797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai West '
        AND o.latitude = '40.7699982'
        AND o.longitude = '-73.9874797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai West '
        AND o.latitude = '40.7699982'
        AND o.longitude = '-73.9874797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai West '
        AND o.latitude = '40.7699982'
        AND o.longitude = '-73.9874797'));

COMMIT;
