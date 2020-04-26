
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
      'Community Options, Inc. Corpus Christi',
      '700 Everhart Rd. Ste. H1
Corpus Christi, TX 78411',
      'Corpus Christi',
      'TX',
      'Please mail ATTN: Executive Director ',
      'Yes',
      '27.7273363',
      '-97.3769532'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. Corpus Christi'
        AND o.latitude = '27.7273363'
        AND o.longitude = '-97.3769532'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. Corpus Christi'
        AND o.latitude = '27.7273363'
        AND o.longitude = '-97.3769532'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. Corpus Christi'
        AND o.latitude = '27.7273363'
        AND o.longitude = '-97.3769532'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. Corpus Christi'
        AND o.latitude = '27.7273363'
        AND o.longitude = '-97.3769532'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. Corpus Christi'
        AND o.latitude = '27.7273363'
        AND o.longitude = '-97.3769532'));

COMMIT;
