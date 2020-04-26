
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
      'Vybe Urgent Care',
      '1217 S Broad St
Philadelphia, PA 19147',
      'Philadelphia',
      'PA',
      'Delivery (more details)',
      'Unsure',
      '39.9349823',
      '-75.1671013'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vybe Urgent Care'
        AND o.latitude = '39.9349823'
        AND o.longitude = '-75.1671013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vybe Urgent Care'
        AND o.latitude = '39.9349823'
        AND o.longitude = '-75.1671013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vybe Urgent Care'
        AND o.latitude = '39.9349823'
        AND o.longitude = '-75.1671013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vybe Urgent Care'
        AND o.latitude = '39.9349823'
        AND o.longitude = '-75.1671013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vybe Urgent Care'
        AND o.latitude = '39.9349823'
        AND o.longitude = '-75.1671013'));

COMMIT;
