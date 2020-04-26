
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
      'Sutter California Pacific Medical Center (CPMC)',
      '1101 Van Ness Ave
San Francisco, CA 94109',
      'San Francisco ',
      'CA',
      'Emergency Department Security, unless donation in pallet quantity.

OR

Call 844-987-6099 for instructions',
      'Yes',
      '37.7859397',
      '-122.4221856'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter California Pacific Medical Center (CPMC)'
        AND o.latitude = '37.7859397'
        AND o.longitude = '-122.4221856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter California Pacific Medical Center (CPMC)'
        AND o.latitude = '37.7859397'
        AND o.longitude = '-122.4221856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter California Pacific Medical Center (CPMC)'
        AND o.latitude = '37.7859397'
        AND o.longitude = '-122.4221856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter California Pacific Medical Center (CPMC)'
        AND o.latitude = '37.7859397'
        AND o.longitude = '-122.4221856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter California Pacific Medical Center (CPMC)'
        AND o.latitude = '37.7859397'
        AND o.longitude = '-122.4221856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter California Pacific Medical Center (CPMC)'
        AND o.latitude = '37.7859397'
        AND o.longitude = '-122.4221856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter California Pacific Medical Center (CPMC)'
        AND o.latitude = '37.7859397'
        AND o.longitude = '-122.4221856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter California Pacific Medical Center (CPMC)'
        AND o.latitude = '37.7859397'
        AND o.longitude = '-122.4221856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Powered air purifying respirator (PAPR) hoods',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutter California Pacific Medical Center (CPMC)'
        AND o.latitude = '37.7859397'
        AND o.longitude = '-122.4221856'));

COMMIT;
