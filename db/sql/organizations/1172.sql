
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
      'Boston Mountain Rural Health Center Inc.',
      '1002 N Spring St
Harrison, AR 72601',
      'Harrison',
      'AR',
      '',
      'No',
      '36.2392589',
      '-93.110002'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Mountain Rural Health Center Inc.'
        AND o.latitude = '36.2392589'
        AND o.longitude = '-93.110002'));

COMMIT;
