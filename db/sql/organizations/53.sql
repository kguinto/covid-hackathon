
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
      'Eden Medical Center',
      '20103 Lake Chabot Rd
Castro Valley, CA 94546',
      'Castro Valley',
      'CA',
      'Drop off at front lobby. Daytime preferred, evening okay but security will have to call in for access.',
      'Yes',
      '37.6982685',
      '-122.0903131'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eden Medical Center'
        AND o.latitude = '37.6982685'
        AND o.longitude = '-122.0903131'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eden Medical Center'
        AND o.latitude = '37.6982685'
        AND o.longitude = '-122.0903131'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eden Medical Center'
        AND o.latitude = '37.6982685'
        AND o.longitude = '-122.0903131'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eden Medical Center'
        AND o.latitude = '37.6982685'
        AND o.longitude = '-122.0903131'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eden Medical Center'
        AND o.latitude = '37.6982685'
        AND o.longitude = '-122.0903131'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eden Medical Center'
        AND o.latitude = '37.6982685'
        AND o.longitude = '-122.0903131'));

COMMIT;
