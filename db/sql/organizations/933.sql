
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
      'United Way',
      '205 W 11th St
Anderson, IN 46016',
      'Anderson',
      'IN',
      'Please call the following number 765-643-7493 before dropping off items. The  The United Way of Madison County will distribute to local area hospitals. ',
      ' Please call the following number 765-643-7493 to see if they will except open boxes/bags',
      '40.1049326',
      '-85.682111'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Way'
        AND o.latitude = '40.1049326'
        AND o.longitude = '-85.682111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Way'
        AND o.latitude = '40.1049326'
        AND o.longitude = '-85.682111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Way'
        AND o.latitude = '40.1049326'
        AND o.longitude = '-85.682111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Way'
        AND o.latitude = '40.1049326'
        AND o.longitude = '-85.682111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Way'
        AND o.latitude = '40.1049326'
        AND o.longitude = '-85.682111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'United Way'
        AND o.latitude = '40.1049326'
        AND o.longitude = '-85.682111'));

COMMIT;
