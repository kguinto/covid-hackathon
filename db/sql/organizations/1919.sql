
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
      'Terrance Cardinal Cook Health Care Center',
      '1249 5th Ave
New York, NY 10029',
      'New York - Manhattan',
      'NY',
      'Curbside',
      'Yes',
      '40.7936028',
      '-73.9505218'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terrance Cardinal Cook Health Care Center'
        AND o.latitude = '40.7936028'
        AND o.longitude = '-73.9505218'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terrance Cardinal Cook Health Care Center'
        AND o.latitude = '40.7936028'
        AND o.longitude = '-73.9505218'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terrance Cardinal Cook Health Care Center'
        AND o.latitude = '40.7936028'
        AND o.longitude = '-73.9505218'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terrance Cardinal Cook Health Care Center'
        AND o.latitude = '40.7936028'
        AND o.longitude = '-73.9505218'));

COMMIT;
