
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
      'KenCrest Services',
      '960A Harvest Drive, Suite 100
Blue Bell, PA 19422',
      'Blue Bell',
      'PA',
      'Curbside, no contact drop-off; or mail to the ATTN of Barbara Kochard at above address; phone contact 610-825-9360 ext. 1129; barbara.kochard@kencrest.org',
      'Yes',
      '40.1539052',
      '-75.2851451'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'KenCrest Services'
        AND o.latitude = '40.1539052'
        AND o.longitude = '-75.2851451'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'KenCrest Services'
        AND o.latitude = '40.1539052'
        AND o.longitude = '-75.2851451'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'KenCrest Services'
        AND o.latitude = '40.1539052'
        AND o.longitude = '-75.2851451'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'KenCrest Services'
        AND o.latitude = '40.1539052'
        AND o.longitude = '-75.2851451'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'KenCrest Services'
        AND o.latitude = '40.1539052'
        AND o.longitude = '-75.2851451'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'KenCrest Services'
        AND o.latitude = '40.1539052'
        AND o.longitude = '-75.2851451'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'KenCrest Services'
        AND o.latitude = '40.1539052'
        AND o.longitude = '-75.2851451'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'KenCrest Services'
        AND o.latitude = '40.1539052'
        AND o.longitude = '-75.2851451'));

COMMIT;
