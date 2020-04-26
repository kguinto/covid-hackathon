
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
      'La Porte Hospital Company LLC',
      '1007 Lincolnway
La Porte, IN 46350',
      'La Porte',
      'IN',
      'ATTN: Accounting/Finance',
      'Yes',
      '41.6106426',
      '-86.7251334'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Porte Hospital Company LLC'
        AND o.latitude = '41.6106426'
        AND o.longitude = '-86.7251334'));

COMMIT;
