
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
      'NF Joint Fire District - Station 2',
      '45 E. Broad St.
Newton Falls, OH 44444',
      'Newton Falls ',
      'OH',
      'Attn: Scott Mccloud',
      'Yes',
      '41.1876497',
      '-80.974067'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NF Joint Fire District - Station 2'
        AND o.latitude = '41.1876497'
        AND o.longitude = '-80.974067'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NF Joint Fire District - Station 2'
        AND o.latitude = '41.1876497'
        AND o.longitude = '-80.974067'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NF Joint Fire District - Station 2'
        AND o.latitude = '41.1876497'
        AND o.longitude = '-80.974067'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NF Joint Fire District - Station 2'
        AND o.latitude = '41.1876497'
        AND o.longitude = '-80.974067'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NF Joint Fire District - Station 2'
        AND o.latitude = '41.1876497'
        AND o.longitude = '-80.974067'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NF Joint Fire District - Station 2'
        AND o.latitude = '41.1876497'
        AND o.longitude = '-80.974067'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NF Joint Fire District - Station 2'
        AND o.latitude = '41.1876497'
        AND o.longitude = '-80.974067'));

COMMIT;
