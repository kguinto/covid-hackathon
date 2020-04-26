
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
      'Cleveland Clinic',
      '2035 E 86th St
Cleveland, OH 44106',
      'Cleveland',
      'OH',
      'Attention Jeff Gates (Donations)',
      'Yes',
      '41.5028671',
      '-81.6268667'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cleveland Clinic'
        AND o.latitude = '41.5028671'
        AND o.longitude = '-81.6268667'));

COMMIT;
