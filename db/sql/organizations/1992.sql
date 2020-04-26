
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
      'Foothill Presbyterian Hospital',
      '250 S Grand Ave
Glendora, CA 91741',
      'Glendora',
      'CA',
      'Drop off to ER please',
      'Yes',
      '34.1327654',
      '-117.8713435'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Presbyterian Hospital'
        AND o.latitude = '34.1327654'
        AND o.longitude = '-117.8713435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Presbyterian Hospital'
        AND o.latitude = '34.1327654'
        AND o.longitude = '-117.8713435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Presbyterian Hospital'
        AND o.latitude = '34.1327654'
        AND o.longitude = '-117.8713435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Presbyterian Hospital'
        AND o.latitude = '34.1327654'
        AND o.longitude = '-117.8713435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Presbyterian Hospital'
        AND o.latitude = '34.1327654'
        AND o.longitude = '-117.8713435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Presbyterian Hospital'
        AND o.latitude = '34.1327654'
        AND o.longitude = '-117.8713435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Presbyterian Hospital'
        AND o.latitude = '34.1327654'
        AND o.longitude = '-117.8713435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Presbyterian Hospital'
        AND o.latitude = '34.1327654'
        AND o.longitude = '-117.8713435'));

COMMIT;
