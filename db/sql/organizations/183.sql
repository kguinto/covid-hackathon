
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
      'Stanford Health Care',
      '550 Broadway St.
Redwood City, CA 94063',
      'Redwood City',
      'CA',
      'Dropoff 7 days a week, 8AM-10AM and 3PM-5PM. Details at https://bit.ly/StanfordPPENeeds. Donations must be unopened, original packaging, in accordance with hospital standards. Not accepting homemade supplies at this time.',
      'No',
      '37.486253',
      '-122.2059536'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.486253'
        AND o.longitude = '-122.2059536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.486253'
        AND o.longitude = '-122.2059536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.486253'
        AND o.longitude = '-122.2059536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.486253'
        AND o.longitude = '-122.2059536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.486253'
        AND o.longitude = '-122.2059536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR/PAPR machines and disposables',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.486253'
        AND o.longitude = '-122.2059536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('flocked swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.486253'
        AND o.longitude = '-122.2059536'));

COMMIT;
