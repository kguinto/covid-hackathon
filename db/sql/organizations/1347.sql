
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
      'Hampton Emergency Squad ',
      '9 Wells Ave
Hampton, NJ 08827',
      'Hampton',
      'NJ',
      'Call (908)763-7618 to schedule drop off ',
      'Yes',
      '40.706685',
      '-74.955897'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hampton Emergency Squad '
        AND o.latitude = '40.706685'
        AND o.longitude = '-74.955897'));

COMMIT;
