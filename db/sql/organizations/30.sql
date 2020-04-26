
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
      'Bay Area Hospital',
      '1775 Thompson Rd
Coos Bay, OR 97420',
      'Coos Bay',
      'OR',
      'Curbside are ED entrance',
      'Yes',
      '43.3835039',
      '-124.2329295'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hospital'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hospital'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hospital'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hospital'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hospital'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bay Area Hospital'
        AND o.latitude = '43.3835039'
        AND o.longitude = '-124.2329295'));

COMMIT;
