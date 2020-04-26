
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
      'AdventHealth Hendersonville',
      '100 Hospital Dr
Hendersonville, NC 28792',
      'Hendersonville',
      'NC',
      'delivery or pick up',
      'unsure',
      '35.3897316',
      '-82.4881453'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AdventHealth Hendersonville'
        AND o.latitude = '35.3897316'
        AND o.longitude = '-82.4881453'));

COMMIT;
