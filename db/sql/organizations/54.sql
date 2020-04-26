
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
      'Penn Care for Women ',
      '800 Walnut St 12th Floor
Philadelphia, PA 19107',
      'Philadelphia',
      'PA',
      'Please bring to 12th floor front desk ',
      'Yes',
      '39.9478512',
      '-75.1546211'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Care for Women '
        AND o.latitude = '39.9478512'
        AND o.longitude = '-75.1546211'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Care for Women '
        AND o.latitude = '39.9478512'
        AND o.longitude = '-75.1546211'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Care for Women '
        AND o.latitude = '39.9478512'
        AND o.longitude = '-75.1546211'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Care for Women '
        AND o.latitude = '39.9478512'
        AND o.longitude = '-75.1546211'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Care for Women '
        AND o.latitude = '39.9478512'
        AND o.longitude = '-75.1546211'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Care for Women '
        AND o.latitude = '39.9478512'
        AND o.longitude = '-75.1546211'));

COMMIT;
