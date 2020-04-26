
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
      'Kaleida Health Buffalo General Hospital',
      '100 High St
Buffalo, NY 14203',
      'Buffalo',
      'NY',
      'Contact via email: CoronaVirusCommandCenter@KaleidaHealth.org',
      'Unsure',
      '42.9006514',
      '-78.8656561'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaleida Health Buffalo General Hospital'
        AND o.latitude = '42.9006514'
        AND o.longitude = '-78.8656561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaleida Health Buffalo General Hospital'
        AND o.latitude = '42.9006514'
        AND o.longitude = '-78.8656561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaleida Health Buffalo General Hospital'
        AND o.latitude = '42.9006514'
        AND o.longitude = '-78.8656561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaleida Health Buffalo General Hospital'
        AND o.latitude = '42.9006514'
        AND o.longitude = '-78.8656561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaleida Health Buffalo General Hospital'
        AND o.latitude = '42.9006514'
        AND o.longitude = '-78.8656561'));

COMMIT;
