
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
      '820 Quarry Rd. Extension
Palo Alto, CA 94304',
      'Palo Alto',
      'CA',
      'By mail ONLY. Attn: Supply Donations Center. Details at https://bit.ly/StanfordPPENeeds. Donations must be unopened, original packaging, in accordance with hospital standards. Not accepting homemade supplies at this time.',
      'No',
      '37.4514017',
      '-122.1157407'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.4514017'
        AND o.longitude = '-122.1157407'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.4514017'
        AND o.longitude = '-122.1157407'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.4514017'
        AND o.longitude = '-122.1157407'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.4514017'
        AND o.longitude = '-122.1157407'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.4514017'
        AND o.longitude = '-122.1157407'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.4514017'
        AND o.longitude = '-122.1157407'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.4514017'
        AND o.longitude = '-122.1157407'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR/PAPR machines',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.4514017'
        AND o.longitude = '-122.1157407'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('flocked swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stanford Health Care'
        AND o.latitude = '37.4514017'
        AND o.longitude = '-122.1157407'));

COMMIT;
