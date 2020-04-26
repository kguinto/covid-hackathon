
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
      'Memorial Health University',
      '4700 Waters Ave
Savannah, GA 31404',
      'Savannah',
      'GA',
      'Mail or drop off Karyn Clements ICU Director',
      'Yes',
      '32.0311034',
      '-81.0891667'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Health University'
        AND o.latitude = '32.0311034'
        AND o.longitude = '-81.0891667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Health University'
        AND o.latitude = '32.0311034'
        AND o.longitude = '-81.0891667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Health University'
        AND o.latitude = '32.0311034'
        AND o.longitude = '-81.0891667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Health University'
        AND o.latitude = '32.0311034'
        AND o.longitude = '-81.0891667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Health University'
        AND o.latitude = '32.0311034'
        AND o.longitude = '-81.0891667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Health University'
        AND o.latitude = '32.0311034'
        AND o.longitude = '-81.0891667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Health University'
        AND o.latitude = '32.0311034'
        AND o.longitude = '-81.0891667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Health University'
        AND o.latitude = '32.0311034'
        AND o.longitude = '-81.0891667'));

COMMIT;
