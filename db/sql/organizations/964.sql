
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
      'Rolling Hills Fire Department ',
      '40 S 200th E Ave
Tulsa, OK 74108',
      'Tulsa',
      'OK',
      '40 S. 200th E. Ave.',
      'Yes',
      '36.1592392',
      '-95.7542574'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rolling Hills Fire Department '
        AND o.latitude = '36.1592392'
        AND o.longitude = '-95.7542574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rolling Hills Fire Department '
        AND o.latitude = '36.1592392'
        AND o.longitude = '-95.7542574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rolling Hills Fire Department '
        AND o.latitude = '36.1592392'
        AND o.longitude = '-95.7542574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rolling Hills Fire Department '
        AND o.latitude = '36.1592392'
        AND o.longitude = '-95.7542574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rolling Hills Fire Department '
        AND o.latitude = '36.1592392'
        AND o.longitude = '-95.7542574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rolling Hills Fire Department '
        AND o.latitude = '36.1592392'
        AND o.longitude = '-95.7542574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rolling Hills Fire Department '
        AND o.latitude = '36.1592392'
        AND o.longitude = '-95.7542574'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rolling Hills Fire Department '
        AND o.latitude = '36.1592392'
        AND o.longitude = '-95.7542574'));

COMMIT;
