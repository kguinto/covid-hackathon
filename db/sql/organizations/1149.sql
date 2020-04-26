
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
      'Bergen New Bridge Medical Center',
      '220 E Ridgewood Ave
Paramus, NJ 07652',
      'Paramus',
      'NJ',
      'the Bergen County Annex can be driven to and dropped off. ',
      'Yes',
      '40.9565431',
      '-74.0626127'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('pre packaged food like cereal bars so on',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bergen New Bridge Medical Center'
        AND o.latitude = '40.9565431'
        AND o.longitude = '-74.0626127'));

COMMIT;
