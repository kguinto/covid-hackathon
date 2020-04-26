
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
      'Lyngblomsten Care Center',
      '1415 Almond Ave W
St Paul, MN 55108',
      'St. Paul',
      'MN',
      'Drop off your PPE donation in the bin just inside our main entry at 1415 Almond Avenue in St. Paul.  Once you drop off your donation, please exit our facility immediately.  Please enclose your donation in a sealed plastic bag.',
      'no open boxes of gloves',
      '44.9797808',
      '-93.1606973'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lyngblomsten Care Center'
        AND o.latitude = '44.9797808'
        AND o.longitude = '-93.1606973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lyngblomsten Care Center'
        AND o.latitude = '44.9797808'
        AND o.longitude = '-93.1606973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lyngblomsten Care Center'
        AND o.latitude = '44.9797808'
        AND o.longitude = '-93.1606973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lyngblomsten Care Center'
        AND o.latitude = '44.9797808'
        AND o.longitude = '-93.1606973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lyngblomsten Care Center'
        AND o.latitude = '44.9797808'
        AND o.longitude = '-93.1606973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lyngblomsten Care Center'
        AND o.latitude = '44.9797808'
        AND o.longitude = '-93.1606973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lyngblomsten Care Center'
        AND o.latitude = '44.9797808'
        AND o.longitude = '-93.1606973'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lyngblomsten Care Center'
        AND o.latitude = '44.9797808'
        AND o.longitude = '-93.1606973'));

COMMIT;
