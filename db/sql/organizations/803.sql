
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
      'New Hanover Regional Medical Center',
      '2131 S 17th St
Wilmington, NC 28401',
      'Wilmington',
      'NC',
      'Emergency department ',
      'No',
      '34.206006',
      '-77.9219862'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hanover Regional Medical Center'
        AND o.latitude = '34.206006'
        AND o.longitude = '-77.9219862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hanover Regional Medical Center'
        AND o.latitude = '34.206006'
        AND o.longitude = '-77.9219862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hanover Regional Medical Center'
        AND o.latitude = '34.206006'
        AND o.longitude = '-77.9219862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hanover Regional Medical Center'
        AND o.latitude = '34.206006'
        AND o.longitude = '-77.9219862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hanover Regional Medical Center'
        AND o.latitude = '34.206006'
        AND o.longitude = '-77.9219862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hanover Regional Medical Center'
        AND o.latitude = '34.206006'
        AND o.longitude = '-77.9219862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hanover Regional Medical Center'
        AND o.latitude = '34.206006'
        AND o.longitude = '-77.9219862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Hanover Regional Medical Center'
        AND o.latitude = '34.206006'
        AND o.longitude = '-77.9219862'));

COMMIT;
