
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
      'North Hawaii Community Hospital',
      '67-1123 Mamalahoa Hwy
Kamuela, HI  96743',
      'Kamuela ',
      'HI',
      'Attn: BarbraRose; Family Birthing Unit',
      'Yes',
      '20.0223959',
      '-155.6644356'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hawaii Community Hospital'
        AND o.latitude = '20.0223959'
        AND o.longitude = '-155.6644356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hawaii Community Hospital'
        AND o.latitude = '20.0223959'
        AND o.longitude = '-155.6644356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hawaii Community Hospital'
        AND o.latitude = '20.0223959'
        AND o.longitude = '-155.6644356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hawaii Community Hospital'
        AND o.latitude = '20.0223959'
        AND o.longitude = '-155.6644356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hawaii Community Hospital'
        AND o.latitude = '20.0223959'
        AND o.longitude = '-155.6644356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hawaii Community Hospital'
        AND o.latitude = '20.0223959'
        AND o.longitude = '-155.6644356'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Hawaii Community Hospital'
        AND o.latitude = '20.0223959'
        AND o.longitude = '-155.6644356'));

COMMIT;
