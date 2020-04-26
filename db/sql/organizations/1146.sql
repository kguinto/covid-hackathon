
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
      'Seton Hays Medical Center',
      '6001 Kyle Pkwy
Kyle, TX 78640',
      'Kyle',
      'TX',
      'Emergent dept',
      'No',
      '30.0084463',
      '-97.8529453'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Hays Medical Center'
        AND o.latitude = '30.0084463'
        AND o.longitude = '-97.8529453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Hays Medical Center'
        AND o.latitude = '30.0084463'
        AND o.longitude = '-97.8529453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Hays Medical Center'
        AND o.latitude = '30.0084463'
        AND o.longitude = '-97.8529453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Hays Medical Center'
        AND o.latitude = '30.0084463'
        AND o.longitude = '-97.8529453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Hays Medical Center'
        AND o.latitude = '30.0084463'
        AND o.longitude = '-97.8529453'));

COMMIT;
