
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
      'Noxubee General Hospital',
      '78 Hospital Dr
Macon, MS 39341',
      'Macon',
      'MS',
      '',
      'No',
      '33.1220867',
      '-88.5588576'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Noxubee General Hospital'
        AND o.latitude = '33.1220867'
        AND o.longitude = '-88.5588576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Noxubee General Hospital'
        AND o.latitude = '33.1220867'
        AND o.longitude = '-88.5588576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Noxubee General Hospital'
        AND o.latitude = '33.1220867'
        AND o.longitude = '-88.5588576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Noxubee General Hospital'
        AND o.latitude = '33.1220867'
        AND o.longitude = '-88.5588576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Noxubee General Hospital'
        AND o.latitude = '33.1220867'
        AND o.longitude = '-88.5588576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Noxubee General Hospital'
        AND o.latitude = '33.1220867'
        AND o.longitude = '-88.5588576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Noxubee General Hospital'
        AND o.latitude = '33.1220867'
        AND o.longitude = '-88.5588576'));

COMMIT;
