
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
      '2402 52nd Street
Suite 12
Lubbock, TX 79412',
      'Lubbock',
      'TX',
      '',
      'Yes',
      '33.547646',
      '-101.8686463'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '33.547646'
        AND o.longitude = '-101.8686463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '33.547646'
        AND o.longitude = '-101.8686463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '33.547646'
        AND o.longitude = '-101.8686463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '33.547646'
        AND o.longitude = '-101.8686463'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '33.547646'
        AND o.longitude = '-101.8686463'));

COMMIT;
