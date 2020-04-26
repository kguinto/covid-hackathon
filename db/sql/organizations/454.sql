
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
      'St Thomas Moore ',
      '1338 Phay Ave
Cañon City, CO 81212',
      'Canon City',
      'CO',
      'Emergency Dept',
      'Yes',
      '38.4552392',
      '-105.2309998'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Thomas Moore '
        AND o.latitude = '38.4552392'
        AND o.longitude = '-105.2309998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Thomas Moore '
        AND o.latitude = '38.4552392'
        AND o.longitude = '-105.2309998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Thomas Moore '
        AND o.latitude = '38.4552392'
        AND o.longitude = '-105.2309998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Thomas Moore '
        AND o.latitude = '38.4552392'
        AND o.longitude = '-105.2309998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Thomas Moore '
        AND o.latitude = '38.4552392'
        AND o.longitude = '-105.2309998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Thomas Moore '
        AND o.latitude = '38.4552392'
        AND o.longitude = '-105.2309998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Thomas Moore '
        AND o.latitude = '38.4552392'
        AND o.longitude = '-105.2309998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Thomas Moore '
        AND o.latitude = '38.4552392'
        AND o.longitude = '-105.2309998'));

COMMIT;
