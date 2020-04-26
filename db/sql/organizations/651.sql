
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
      'Community Options Inc.',
      '2043 S Black Horse Pike
Williamstown, NJ 08094',
      'Williamstown',
      'NJ',
      'ATTN: Patrick Charles, Executive Director.',
      'Yes',
      '39.6571782',
      '-74.9589573'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '39.6571782'
        AND o.longitude = '-74.9589573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '39.6571782'
        AND o.longitude = '-74.9589573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '39.6571782'
        AND o.longitude = '-74.9589573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '39.6571782'
        AND o.longitude = '-74.9589573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '39.6571782'
        AND o.longitude = '-74.9589573'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '39.6571782'
        AND o.longitude = '-74.9589573'));

COMMIT;
