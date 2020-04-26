
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
      'NHC HomeCare Hendersonville',
      '112 Saundersville Rd
Hendersonville, TN 37075',
      'Hendersonville',
      'TN',
      '',
      'Yes',
      '36.3251108',
      '-86.5954672'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NHC HomeCare Hendersonville'
        AND o.latitude = '36.3251108'
        AND o.longitude = '-86.5954672'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NHC HomeCare Hendersonville'
        AND o.latitude = '36.3251108'
        AND o.longitude = '-86.5954672'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NHC HomeCare Hendersonville'
        AND o.latitude = '36.3251108'
        AND o.longitude = '-86.5954672'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NHC HomeCare Hendersonville'
        AND o.latitude = '36.3251108'
        AND o.longitude = '-86.5954672'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NHC HomeCare Hendersonville'
        AND o.latitude = '36.3251108'
        AND o.longitude = '-86.5954672'));

COMMIT;
