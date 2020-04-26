
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
      'Priority Urgent Care',
      '1345 Allen Rd #300
Bakersfield, CA 93314',
      'Bakersfield',
      'CA',
      'Drop off at entrance or mail w/ Attn: Dr. Kiran Loewen',
      'Yes',
      '35.3714472',
      '-119.1461357'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Priority Urgent Care'
        AND o.latitude = '35.3714472'
        AND o.longitude = '-119.1461357'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Priority Urgent Care'
        AND o.latitude = '35.3714472'
        AND o.longitude = '-119.1461357'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Priority Urgent Care'
        AND o.latitude = '35.3714472'
        AND o.longitude = '-119.1461357'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Priority Urgent Care'
        AND o.latitude = '35.3714472'
        AND o.longitude = '-119.1461357'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Priority Urgent Care'
        AND o.latitude = '35.3714472'
        AND o.longitude = '-119.1461357'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Priority Urgent Care'
        AND o.latitude = '35.3714472'
        AND o.longitude = '-119.1461357'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Priority Urgent Care'
        AND o.latitude = '35.3714472'
        AND o.longitude = '-119.1461357'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Priority Urgent Care'
        AND o.latitude = '35.3714472'
        AND o.longitude = '-119.1461357'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Priority Urgent Care'
        AND o.latitude = '35.3714472'
        AND o.longitude = '-119.1461357'));

COMMIT;
