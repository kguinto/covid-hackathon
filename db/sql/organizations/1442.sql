
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
      'Providence Life Services',
      '18601 N Creek Dr
Tinley Park, IL 60477',
      'Tinley Park',
      'IL',
      'Mailing would work m-f 8-5:00pm',
      'Yes',
      '41.5538675',
      '-87.7970055'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Life Services'
        AND o.latitude = '41.5538675'
        AND o.longitude = '-87.7970055'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Life Services'
        AND o.latitude = '41.5538675'
        AND o.longitude = '-87.7970055'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Life Services'
        AND o.latitude = '41.5538675'
        AND o.longitude = '-87.7970055'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Life Services'
        AND o.latitude = '41.5538675'
        AND o.longitude = '-87.7970055'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Life Services'
        AND o.latitude = '41.5538675'
        AND o.longitude = '-87.7970055'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Life Services'
        AND o.latitude = '41.5538675'
        AND o.longitude = '-87.7970055'));

COMMIT;
