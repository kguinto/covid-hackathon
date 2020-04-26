
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
      'Sunrise Senior Living',
      '5910 Wilson Blvd
Arlington, VA 22205',
      'Arlington',
      'VA',
      'ATTN: Rob McAndrews',
      'No',
      '38.8741132',
      '-77.1348092'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living'
        AND o.latitude = '38.8741132'
        AND o.longitude = '-77.1348092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living'
        AND o.latitude = '38.8741132'
        AND o.longitude = '-77.1348092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living'
        AND o.latitude = '38.8741132'
        AND o.longitude = '-77.1348092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living'
        AND o.latitude = '38.8741132'
        AND o.longitude = '-77.1348092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living'
        AND o.latitude = '38.8741132'
        AND o.longitude = '-77.1348092'));

COMMIT;
