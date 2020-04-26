
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
      '12731 Research Blvd
Unit C300
Austin, TX 78759',
      'Austin',
      'TX',
      'Community Options Inc 
Attn: Greg Thoennes 
12731 Research Blvd
Unit C300
Austin, TX 78759
Phn: 512-595-1402

Please call 512-595-1402 for questions. We provide residential services for people with Developmental disabilities. Many of these individuals have pre-exisiting conditions that make them vulnerable to COVID-19. We provide 24 hour rotating staff 7 days a week to make sure they stay safe and healthy. We are requesting any PPE items that we can have on hand to help keep our wonderful staff and residents safe!',
      'Yes',
      '30.4336982',
      '-97.7662987'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '30.4336982'
        AND o.longitude = '-97.7662987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '30.4336982'
        AND o.longitude = '-97.7662987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '30.4336982'
        AND o.longitude = '-97.7662987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '30.4336982'
        AND o.longitude = '-97.7662987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '30.4336982'
        AND o.longitude = '-97.7662987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '30.4336982'
        AND o.longitude = '-97.7662987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '30.4336982'
        AND o.longitude = '-97.7662987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc.'
        AND o.latitude = '30.4336982'
        AND o.longitude = '-97.7662987'));

COMMIT;
