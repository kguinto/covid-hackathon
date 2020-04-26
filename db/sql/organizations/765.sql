
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
      'Women''s Health Valley Forge OBGYN',
      '799 Gay Street 
Phoenixville, PA 19460',
      'Phoenixville',
      'PA',
      'Mail or drop office near front door. (We are OB doctors who deliver ~60 babies a month.)',
      'At this time we do not have any n95 masks at our office. ',
      '40.1240348',
      '-75.516251'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Valley Forge OBGYN'
        AND o.latitude = '40.1240348'
        AND o.longitude = '-75.516251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Valley Forge OBGYN'
        AND o.latitude = '40.1240348'
        AND o.longitude = '-75.516251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Valley Forge OBGYN'
        AND o.latitude = '40.1240348'
        AND o.longitude = '-75.516251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Valley Forge OBGYN'
        AND o.latitude = '40.1240348'
        AND o.longitude = '-75.516251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Valley Forge OBGYN'
        AND o.latitude = '40.1240348'
        AND o.longitude = '-75.516251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Valley Forge OBGYN'
        AND o.latitude = '40.1240348'
        AND o.longitude = '-75.516251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Valley Forge OBGYN'
        AND o.latitude = '40.1240348'
        AND o.longitude = '-75.516251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Valley Forge OBGYN'
        AND o.latitude = '40.1240348'
        AND o.longitude = '-75.516251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s Health Valley Forge OBGYN'
        AND o.latitude = '40.1240348'
        AND o.longitude = '-75.516251'));

COMMIT;
