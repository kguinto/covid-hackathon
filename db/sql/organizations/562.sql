
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
      'RiteCare Urgent Care Medical Center',
      '915 W 49th St
Hialeah, FL 33012',
      'Hialeah',
      'FL',
      '',
      'Unsure',
      '25.8670016',
      '-80.3018542'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('We are actively doing COVID testing and we are down to zero PPE',
    (SELECT id FROM organizations o
      WHERE o.name = 'RiteCare Urgent Care Medical Center'
        AND o.latitude = '25.8670016'
        AND o.longitude = '-80.3018542'));

COMMIT;
