
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
      'Guthrie Robert Packer Hospital',
      '1 Guthrie Square
Sayre, PA 18840',
      'Sayre',
      'PA',
      'ATTN Shaylyn Beck LDRP',
      'Yes',
      '41.9803903',
      '-76.5199915'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Guthrie Robert Packer Hospital'
        AND o.latitude = '41.9803903'
        AND o.longitude = '-76.5199915'));

COMMIT;
