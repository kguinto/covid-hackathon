
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
      'Boothbay Region Health Center',
      '185 Townsend Ave., Suite R
Boothbay Harbor, ME 04538',
      'Boothbay Harbor',
      'ME',
      'ATTN: Robyn Ham',
      'Yes',
      '43.8606798',
      '-69.6256273'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boothbay Region Health Center'
        AND o.latitude = '43.8606798'
        AND o.longitude = '-69.6256273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boothbay Region Health Center'
        AND o.latitude = '43.8606798'
        AND o.longitude = '-69.6256273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boothbay Region Health Center'
        AND o.latitude = '43.8606798'
        AND o.longitude = '-69.6256273'));

COMMIT;
