
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
      'Denton family dental care',
      '3969 Teasley Ln #1500
Denton, TX 76210',
      'Denton',
      'TX',
      'VFD ',
      'Yes',
      '33.1590166',
      '-97.1046907'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Denton family dental care'
        AND o.latitude = '33.1590166'
        AND o.longitude = '-97.1046907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Denton family dental care'
        AND o.latitude = '33.1590166'
        AND o.longitude = '-97.1046907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Denton family dental care'
        AND o.latitude = '33.1590166'
        AND o.longitude = '-97.1046907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Denton family dental care'
        AND o.latitude = '33.1590166'
        AND o.longitude = '-97.1046907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Denton family dental care'
        AND o.latitude = '33.1590166'
        AND o.longitude = '-97.1046907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Denton family dental care'
        AND o.latitude = '33.1590166'
        AND o.longitude = '-97.1046907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Denton family dental care'
        AND o.latitude = '33.1590166'
        AND o.longitude = '-97.1046907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Denton family dental care'
        AND o.latitude = '33.1590166'
        AND o.longitude = '-97.1046907'));

COMMIT;
