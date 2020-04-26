
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
      'Wayne State University',
      '5285 Anthony Wayne Dr
Detroit, MI 48202',
      'Detroit',
      'MI',
      'By shipment or pick up (more details needed). Note: Wasn''t sure if this referred to the Campus Health Center or not, but that''s what this info is for. ',
      'Unsure',
      '42.3575996',
      '-83.0734615'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Especially non-latex gloves. Disposable surgical caps.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wayne State University'
        AND o.latitude = '42.3575996'
        AND o.longitude = '-83.0734615'));

COMMIT;
