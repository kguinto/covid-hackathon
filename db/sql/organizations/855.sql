
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
      'George Washington University Hospital',
      '900 23rd St NW
Washington, DC 20037',
      'Washington',
      'DC',
      'Drop off at front main entrance ',
      'Yes',
      '38.901261',
      '-77.0507412'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'George Washington University Hospital'
        AND o.latitude = '38.901261'
        AND o.longitude = '-77.0507412'));

COMMIT;
