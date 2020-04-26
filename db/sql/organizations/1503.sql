
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
      'Millwood Hospital',
      '1011 N Cooper St
Arlington, TX 76011',
      'Arlington',
      'TX',
      'Attn: Raymond Wieck',
      'No',
      '32.7509201',
      '-97.1124275'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millwood Hospital'
        AND o.latitude = '32.7509201'
        AND o.longitude = '-97.1124275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millwood Hospital'
        AND o.latitude = '32.7509201'
        AND o.longitude = '-97.1124275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millwood Hospital'
        AND o.latitude = '32.7509201'
        AND o.longitude = '-97.1124275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millwood Hospital'
        AND o.latitude = '32.7509201'
        AND o.longitude = '-97.1124275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millwood Hospital'
        AND o.latitude = '32.7509201'
        AND o.longitude = '-97.1124275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millwood Hospital'
        AND o.latitude = '32.7509201'
        AND o.longitude = '-97.1124275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Millwood Hospital'
        AND o.latitude = '32.7509201'
        AND o.longitude = '-97.1124275'));

COMMIT;
