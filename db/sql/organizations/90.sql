
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
      'Family Health Center',
      '26 Queen St
Worcester, MA 01610',
      'Worcester',
      'MA',
      'Best to mail: attention Joann Ford',
      'Yes',
      '42.2592467',
      '-71.8149758'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center'
        AND o.latitude = '42.2592467'
        AND o.longitude = '-71.8149758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center'
        AND o.latitude = '42.2592467'
        AND o.longitude = '-71.8149758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center'
        AND o.latitude = '42.2592467'
        AND o.longitude = '-71.8149758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center'
        AND o.latitude = '42.2592467'
        AND o.longitude = '-71.8149758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center'
        AND o.latitude = '42.2592467'
        AND o.longitude = '-71.8149758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center'
        AND o.latitude = '42.2592467'
        AND o.longitude = '-71.8149758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center'
        AND o.latitude = '42.2592467'
        AND o.longitude = '-71.8149758'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Health Center'
        AND o.latitude = '42.2592467'
        AND o.longitude = '-71.8149758'));

COMMIT;
